import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalDifferentialOperator
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BoundaryConditions

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure ExistenceTheoremPackage {O : FunctionalDifferentialOperatorPackage}
    (B : BoundaryConditionsPackage O) where
  solutionSpace : Type u
  existenceClaim : Prop
  uniquenessClaim : Prop
  regularityClaim : Prop
  continuousDependence : Prop

structure ExistenceTheoremEvidence {O : FunctionalDifferentialOperatorPackage}
    {B : BoundaryConditionsPackage O} (E : ExistenceTheoremPackage B) where
  existenceClaimClosed : E.existenceClaim
  uniquenessClaimClosed : E.uniquenessClaim
  regularityClaimClosed : E.regularityClaim
  continuousDependenceClosed : E.continuousDependence

def ExistenceTheoremClosed {O : FunctionalDifferentialOperatorPackage}
    {B : BoundaryConditionsPackage O} (E : ExistenceTheoremPackage B) : Prop :=
  E.existenceClaim ∧ E.uniquenessClaim ∧ E.regularityClaim ∧ E.continuousDependence

theorem existence_theorem_closed_from_evidence
    {O : FunctionalDifferentialOperatorPackage} {B : BoundaryConditionsPackage O}
    (E : ExistenceTheoremPackage B) (Ev : ExistenceTheoremEvidence E) :
    ExistenceTheoremClosed E := by
  exact And.intro Ev.existenceClaimClosed
    (And.intro Ev.uniquenessClaimClosed
      (And.intro Ev.regularityClaimClosed Ev.continuousDependenceClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
