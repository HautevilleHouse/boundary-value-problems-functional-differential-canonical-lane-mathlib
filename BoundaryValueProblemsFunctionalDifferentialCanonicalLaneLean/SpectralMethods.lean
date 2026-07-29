import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure SpectralResolutionPackage where
  eigenfunctionExpansion : Prop
  convergenceInNorm : Prop
  asymptoticDistribution : Prop
  spectralInvariants : Prop

structure SpectralResolutionEvidence (S : SpectralResolutionPackage) where
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  convergenceInNormClosed : S.convergenceInNorm
  asymptoticDistributionClosed : S.asymptoticDistribution
  spectralInvariantsClosed : S.spectralInvariants

def SpectralResolutionClosed (S : SpectralResolutionPackage) : Prop :=
  S.eigenfunctionExpansion ∧ S.convergenceInNorm ∧
  S.asymptoticDistribution ∧ S.spectralInvariants

theorem spectral_resolution_closed_from_evidence (S : SpectralResolutionPackage)
    (E : SpectralResolutionEvidence S) : SpectralResolutionClosed S := by
  exact And.intro E.eigenfunctionExpansionClosed
    (And.intro E.convergenceInNormClosed
      (And.intro E.asymptoticDistributionClosed E.spectralInvariantsClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse