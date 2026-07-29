import canonicalLaneMathlib.AdmissibleClass
import GreenFunctionKernelSturmLiouville

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure GreenFunctionPackage {S : SturmLiouvillePackage} where
  greenKernel : Type
  continuity : Prop
  symmetry : Prop
  integralRepresentation : Prop
  boundaryJumpCondition : Prop

structure GreenFunctionEvidence {S : SturmLiouvillePackage}
    (G : GreenFunctionPackage S) where
  continuityClosed : G.continuity
  symmetryClosed : G.symmetry
  integralRepresentationClosed : G.integralRepresentation
  boundaryJumpConditionClosed : G.boundaryJumpCondition

def GreenFunctionClosed {S : SturmLiouvillePackage}
    (G : GreenFunctionPackage S) : Prop :=
  G.continuity ∧ G.symmetry ∧ G.integralRepresentation ∧ G.boundaryJumpCondition

theorem green_function_closed_from_evidence {S : SturmLiouvillePackage}
    (G : GreenFunctionPackage S) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.continuityClosed
    (And.intro E.symmetryClosed
      (And.intro E.integralRepresentationClosed E.boundaryJumpConditionClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse