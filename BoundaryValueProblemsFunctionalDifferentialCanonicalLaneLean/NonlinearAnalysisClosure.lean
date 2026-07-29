import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure NonlinearAnalysisPackage where
  monotonicity : Prop
  compactness : Prop
  fixedPointArgument : Prop
  bifurcationControl : Prop

structure NonlinearAnalysisEvidence (N : NonlinearAnalysisPackage) where
  monotonicityClosed : N.monotonicity
  compactnessClosed : N.compactness
  fixedPointArgumentClosed : N.fixedPointArgument
  bifurcationControlClosed : N.bifurcationControl

def NonlinearAnalysisClosed (N : NonlinearAnalysisPackage) : Prop :=
  N.monotonicity ∧ N.compactness ∧ N.fixedPointArgument ∧ N.bifurcationControl

theorem nonlinear_analysis_closed_from_evidence (N : NonlinearAnalysisPackage)
    (E : NonlinearAnalysisEvidence N) : NonlinearAnalysisClosed N := by
  exact And.intro E.monotonicityClosed
    (And.intro E.compactnessClosed
      (And.intro E.fixedPointArgumentClosed E.bifurcationControlClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse