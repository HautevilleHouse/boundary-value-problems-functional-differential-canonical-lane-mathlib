import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BoundaryOperator

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialEquation (B : BoundaryOperator) where
  equationType : Type
  solutionSpace : Type
  wellposed : Prop
  regularity : Prop

structure FunctionalDifferentialEquationEvidence (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) where
  wellposedClosed : FDE.wellposed
  regularityClosed : FDE.regularity

def FunctionalDifferentialEquationClosed (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) : Prop :=
  FDE.wellposed ∧ FDE.regularity

theorem functional_differential_equation_closed_from_evidence (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) (E : FunctionalDifferentialEquationEvidence B FDE) :
    FunctionalDifferentialEquationClosed B FDE := by
  exact And.intro E.wellposedClosed E.regularityClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
