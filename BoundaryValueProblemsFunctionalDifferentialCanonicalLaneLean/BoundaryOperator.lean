import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BoundaryOperator where
  domain : Type
  codomain : Type
  operator : domain → codomain
  linearity : Prop
  boundedness : Prop

structure BoundaryOperatorEvidence (B : BoundaryOperator) where
  linearityClosed : B.linearity
  boundednessClosed : B.boundedness

def BoundaryOperatorClosed (B : BoundaryOperator) : Prop :=
  B.linearity ∧ B.boundedness

theorem boundary_operator_closed_from_evidence (B : BoundaryOperator) (E : BoundaryOperatorEvidence B) :
    BoundaryOperatorClosed B := by
  exact And.intro E.linearityClosed E.boundednessClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
