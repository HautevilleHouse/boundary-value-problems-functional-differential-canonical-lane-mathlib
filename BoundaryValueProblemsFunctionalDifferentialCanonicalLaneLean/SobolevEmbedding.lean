import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure SobolevEmbeddingPackage where
  exponentP : ℝ
  dimensionN : ℕ
  embeddingInequality : Prop
  compactEmbedding : Prop
  traceOperator : Prop

structure SobolevEmbeddingEvidence (S : SobolevEmbeddingPackage) where
  embeddingInequalityClosed : S.embeddingInequality
  compactEmbeddingClosed : S.compactEmbedding
  traceOperatorClosed : S.traceOperator

def SobolevEmbeddingClosed (S : SobolevEmbeddingPackage) : Prop :=
  S.embeddingInequality ∧ S.compactEmbedding ∧ S.traceOperator

theorem sobolev_embedding_closed_from_evidence
    (S : SobolevEmbeddingPackage) (E : SobolevEmbeddingEvidence S) :
    SobolevEmbeddingClosed S := by
  exact And.intro E.embeddingInequalityClosed (And.intro E.compactEmbeddingClosed E.traceOperatorClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse