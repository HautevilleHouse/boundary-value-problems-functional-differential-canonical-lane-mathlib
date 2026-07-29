import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure WellposednessPackage where
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  regularity : Prop

structure WellposednessEvidence (W : WellposednessPackage) where
  existenceClosed : W.existence
  uniquenessClosed : W.uniqueness
  continuousDependenceClosed : W.continuousDependence
  regularityClosed : W.regularity

def WellposednessClosed (W : WellposednessPackage) : Prop :=
  W.existence ∧ W.uniqueness ∧ W.continuousDependence ∧ W.regularity

theorem wellposedness_closed_from_evidence (W : WellposednessPackage)
    (E : WellposednessEvidence W) : WellposednessClosed W := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed
      (And.intro E.continuousDependenceClosed E.regularityClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse