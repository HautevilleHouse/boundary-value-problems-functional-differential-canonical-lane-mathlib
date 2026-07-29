import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialSystem where
  stateSpace : Type u
  boundaryCondition : stateSpace → Prop
  differentialOperator : (stateSpace → ℝ) → (stateSpace → ℝ)
  solutionSpace : Set (stateSpace → ℝ)
  linearity : Prop
  wellposed : Prop

structure FunctionalDifferentialEvidence (S : FunctionalDifferentialSystem) where
  linearityClosed : S.linearity
  wellposedClosed : S.wellposed

def FunctionalDifferentialClosed (S : FunctionalDifferentialSystem) : Prop :=
  S.linearity ∧ S.wellposed

theorem functional_differential_closed_from_evidence (S : FunctionalDifferentialSystem)
    (E : FunctionalDifferentialEvidence S) : FunctionalDifferentialClosed S := by
  exact And.intro E.linearityClosed E.wellposedClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse