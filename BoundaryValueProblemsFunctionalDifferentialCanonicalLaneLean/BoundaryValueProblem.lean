import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialEquation where
  state : Type
  timeDomain : Type
  delay : Type
  equation : state → timeDomain → state
  delayDependence : Prop

structure BoundaryCondition where
  boundaryTime : Type
  boundaryValue : Type
  condition : boundaryTime → boundaryValue → Prop

structure BoundaryValueProblem where
  fde : FunctionalDifferentialEquation
  bc : BoundaryCondition
  interval : Type
  solutionSpace : Type
  wellPosed : Prop

structure BVPAdmittedObject where
  problem : BoundaryValueProblem
  existenceResult : Prop
  uniquenessResult : Prop
  stabilityResult : Prop
  conclusion : existenceResult ∧ uniquenessResult ∧ stabilityResult

def BVWitnessClosed (O : BVPAdmittedObject) : Prop :=
  O.conclusion

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse