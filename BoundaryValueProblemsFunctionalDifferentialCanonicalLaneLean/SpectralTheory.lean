import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.ProblemPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure SpectralPackage {E : FunctionalDifferentialEquation}
    (P : ProblemPackage E) where
  eigenvalueProblem : Prop
  eigenfunctionExpansion : Prop
  discreteSpectrum : Prop
  completenessOfEigenfunctions : Prop

structure SpectralEvidence {E : FunctionalDifferentialEquation}
    {P : ProblemPackage E} (S : SpectralPackage P) where
  eigenvalueProblemClosed : S.eigenvalueProblem
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  discreteSpectrumClosed : S.discreteSpectrum
  completenessOfEigenfunctionsClosed : S.completenessOfEigenfunctions

def SpectralClosed {E : FunctionalDifferentialEquation}
    {P : ProblemPackage E} (S : SpectralPackage P) : Prop :=
  S.eigenvalueProblem ∧ S.eigenfunctionExpansion ∧
  S.discreteSpectrum ∧ S.completenessOfEigenfunctions

theorem spectral_closed_from_evidence
    {E : FunctionalDifferentialEquation} {P : ProblemPackage E}
    (S : SpectralPackage P) (E' : SpectralEvidence S) :
    SpectralClosed S := by
  exact And.intro E'.eigenvalueProblemClosed
    (And.intro E'.eigenfunctionExpansionClosed
      (And.intro E'.discreteSpectrumClosed E'.completenessOfEigenfunctionsClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse