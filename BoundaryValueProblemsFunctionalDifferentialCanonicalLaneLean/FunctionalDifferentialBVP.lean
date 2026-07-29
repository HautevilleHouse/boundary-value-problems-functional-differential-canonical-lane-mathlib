import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialBVPPackage where
  domainSpace : Type u
  boundarySpace : Type v
  operatorType : Type w
  linearity : Prop
  coercivity : Prop
  solutionSpace : Prop

structure FunctionalDifferentialBVPEvidence (P : FunctionalDifferentialBVPPackage) where
  linearityClosed : P.linearity
  coercivityClosed : P.coercivity
  solutionSpaceClosed : P.solutionSpace

def FunctionalDifferentialBVPClosed (P : FunctionalDifferentialBVPPackage) : Prop :=
  P.linearity ∧ P.coercivity ∧ P.solutionSpace

theorem functional_differential_bvp_closed_from_evidence
    (P : FunctionalDifferentialBVPPackage) (E : FunctionalDifferentialBVPEvidence P) :
    FunctionalDifferentialBVPClosed P := by
  exact And.intro E.linearityClosed (And.intro E.coercivityClosed E.solutionSpaceClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse