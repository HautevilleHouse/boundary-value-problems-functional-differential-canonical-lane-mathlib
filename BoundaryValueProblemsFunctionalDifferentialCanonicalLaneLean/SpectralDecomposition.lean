import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalDifferentialSystem

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure SpectralDecompositionPackage {S : FunctionalDifferentialSystem} where
  eigenvalues : List ℝ
  eigenfunctions : S.stateSpace → ℕ → ℝ
  completeness : Prop
  orthogonality : Prop

structure SpectralDecompositionEvidence {S : FunctionalDifferentialSystem}
    (D : SpectralDecompositionPackage S) where
  completenessClosed : D.completeness
  orthogonalityClosed : D.orthogonality

def SpectralDecompositionClosed {S : FunctionalDifferentialSystem}
    (D : SpectralDecompositionPackage S) : Prop :=
  D.completeness ∧ D.orthogonality

theorem spectral_decomposition_closed_from_evidence {S : FunctionalDifferentialSystem}
    (D : SpectralDecompositionPackage S) (E : SpectralDecompositionEvidence D) :
    SpectralDecompositionClosed D := by
  exact And.intro E.completenessClosed E.orthogonalityClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse