import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure SobolevTracePackage where
  traceMap : Type
  traceTheorem : Prop
  compactEmbedding : Prop
  fractionalSobolevSpaces : Prop

structure SobolevTraceEvidence (T : SobolevTracePackage) where
  traceTheoremClosed : T.traceTheorem
  compactEmbeddingClosed : T.compactEmbedding
  fractionalSobolevSpacesClosed : T.fractionalSobolevSpaces

def SobolevTraceClosed (T : SobolevTracePackage) : Prop :=
  T.traceTheorem ∧ T.compactEmbedding ∧ T.fractionalSobolevSpaces

theorem sobolev_trace_closed_from_evidence (T : SobolevTracePackage)
    (E : SobolevTraceEvidence T) : SobolevTraceClosed T := by
  exact And.intro E.traceTheoremClosed (And.intro E.compactEmbeddingClosed E.fractionalSobolevSpacesClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse