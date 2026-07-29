import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalDifferentialEquation

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure ExistenceUniquenessPackage (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) where
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure ExistenceUniquenessEvidence (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) (P : ExistenceUniquenessPackage B FDE) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness
  continuousDependenceClosed : P.continuousDependence

def ExistenceUniquenessClosed (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) (P : ExistenceUniquenessPackage B FDE) : Prop :=
  P.existence ∧ P.uniqueness ∧ P.continuousDependence

theorem existence_uniqueness_closed_from_evidence (B : BoundaryOperator) (FDE : FunctionalDifferentialEquation B) (P : ExistenceUniquenessPackage B FDE) (E : ExistenceUniquenessEvidence B FDE P) :
    ExistenceUniquenessClosed B FDE P := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed E.continuousDependenceClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
