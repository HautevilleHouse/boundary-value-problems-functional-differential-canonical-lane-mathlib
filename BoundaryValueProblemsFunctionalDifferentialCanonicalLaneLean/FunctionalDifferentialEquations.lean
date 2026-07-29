import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialEquationPackage {P : BVPPackage} (F : P) where
  equationType : Type u
  order : ℕ
  linearity : Prop
  wellposedness : Prop
  stability : Prop

structure FDEvidence {P : BVPPackage} {F : FunctionalDifferentialEquationPackage P} where
  equationTypeClosed : F.equationType
  orderClosed : F.order
  linearityClosed : F.linearity
  wellposednessClosed : F.wellposedness
  stabilityClosed : F.stability

def FDEClosed {P : BVPPackage} {F : FunctionalDifferentialEquationPackage P} : Prop :=
  F.wellposedness ∧ F.stability

theorem fde_closed_from_evidence {P : BVPPackage} {F : FunctionalDifferentialEquationPackage P}
    (E : FDEvidence) : FDEClosed := by
  exact And.intro E.wellposednessClosed E.stabilityClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse