import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalDifferentialEquation

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BCPackage (F : FDPackage) where
  boundaryOperator : (F.domain → F.codomain) → Prop
  wellPosed : Prop
  existence : Prop
  uniqueness : Prop

structure BCEvidence (F : FDPackage) (B : BCPackage F) where
  wellPosedClosed : B.wellPosed
  existenceClosed : B.existence
  uniquenessClosed : B.uniqueness

def BCClosed (F : FDPackage) (B : BCPackage F) : Prop :=
  B.wellPosed ∧ B.existence ∧ B.uniqueness

theorem bc_closed_from_evidence (F : FDPackage) (B : BCPackage F) (E : BCEvidence F B) : BCClosed F B := by
  exact And.intro E.wellPosedClosed (And.intro E.existenceClosed E.uniquenessClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse