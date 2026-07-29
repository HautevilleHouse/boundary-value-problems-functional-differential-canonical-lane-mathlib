import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalBoundaryPackage where
  boundaryCondition : Type
  domain : Type
  codomain : Type
  differentialOperator : Type
  linearizedProblem : Prop
  wellPosed : Prop
  solutionSpaceDimension : Nat

structure FunctionalBoundaryEvidence (P : FunctionalBoundaryPackage) where
  linearizedProblemClosed : P.linearizedProblem
  wellPosedClosed : P.wellPosed
  solutionSpaceDimensionPositive : P.solutionSpaceDimension > 0

def FunctionalBoundaryClosed (P : FunctionalBoundaryPackage) : Prop :=
  P.linearizedProblem ∧ P.wellPosed ∧ P.solutionSpaceDimension > 0

theorem functional_boundary_closed_from_evidence (P : FunctionalBoundaryPackage)
    (E : FunctionalBoundaryEvidence P) : FunctionalBoundaryClosed P := by
  exact And.intro E.linearizedProblemClosed (And.intro E.wellPosedClosed E.solutionSpaceDimensionPositive)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse