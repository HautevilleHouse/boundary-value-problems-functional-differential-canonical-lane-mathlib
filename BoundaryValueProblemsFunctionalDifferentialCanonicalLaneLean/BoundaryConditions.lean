import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalDifferentialOperator

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BoundaryConditionsPackage {O : FunctionalDifferentialOperatorPackage} where
  boundaryDomain : Type u
  boundaryOperator : O.functionSpace → boundaryDomain
  homogeneousPart : Prop
  inhomogeneousPart : Prop
  compatibilityWithOperator : Prop

structure BoundaryConditionsEvidence {O : FunctionalDifferentialOperatorPackage}
    (B : BoundaryConditionsPackage O) where
  homogeneousPartClosed : B.homogeneousPart
  inhomogeneousPartClosed : B.inhomogeneousPart
  compatibilityWithOperatorClosed : B.compatibilityWithOperator

def BoundaryConditionsClosed {O : FunctionalDifferentialOperatorPackage}
    (B : BoundaryConditionsPackage O) : Prop :=
  B.homogeneousPart ∧ B.inhomogeneousPart ∧ B.compatibilityWithOperator

theorem boundary_conditions_closed_from_evidence
    {O : FunctionalDifferentialOperatorPackage} (B : BoundaryConditionsPackage O)
    (E : BoundaryConditionsEvidence B) : BoundaryConditionsClosed B := by
  exact And.intro E.homogeneousPartClosed
    (And.intro E.inhomogeneousPartClosed E.compatibilityWithOperatorClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
