import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BoundaryValueProblem

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure ExistenceUniquenessPackage (B : BoundaryValueProblem) where
  existenceTheorem : Prop
  uniquenessTheorem : Prop
  continuousDependence : Prop
  domainAdmissibility : Prop

structure ExistenceUniquenessEvidence (B : BoundaryValueProblem) (E : ExistenceUniquenessPackage B) where
  existenceClosed : E.existenceTheorem
  uniquenessClosed : E.uniquenessTheorem
  continuousDependenceClosed : E.continuousDependence
  domainAdmissibilityClosed : E.domainAdmissibility

def ExistenceUniquenessClosed (B : BoundaryValueProblem) (E : ExistenceUniquenessPackage B) : Prop :=
  E.existenceTheorem ∧ E.uniquenessTheorem ∧ E.continuousDependence ∧ E.domainAdmissibility

theorem existence_uniqueness_closed_from_evidence
    (B : BoundaryValueProblem) (E : ExistenceUniquenessPackage B)
    (Ev : ExistenceUniquenessEvidence B E) : ExistenceUniquenessClosed B E := by
  exact And.intro Ev.existenceClosed
    (And.intro Ev.uniquenessClosed
      (And.intro Ev.continuousDependenceClosed Ev.domainAdmissibilityClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse