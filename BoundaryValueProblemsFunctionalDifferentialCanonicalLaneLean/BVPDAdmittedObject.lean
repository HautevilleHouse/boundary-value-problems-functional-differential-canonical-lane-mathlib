import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BVPDAdmittedObject where
  domain : Type u
  boundaryCondition : Prop
  differentialEquation : Prop
  solutionSpace : Type v
  functionalWellPosed : Prop
  conclusion : functionalWellPosed

def BVPDWitnessClosed (O : BVPDAdmittedObject) : Prop :=
  O.functionalWellPosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse