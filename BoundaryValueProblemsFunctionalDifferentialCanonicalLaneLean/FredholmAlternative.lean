import canonicalLaneMathlib.AdmissibleClass
import FunctionalBoundaryLayer

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FredholmPackage {P : FunctionalBoundaryPackage} where
  index : ℤ
  kernelDimension : ℕ
  cokernelDimension : ℕ
  alternativeProperty : Prop

structure FredholmEvidence {P : FunctionalBoundaryPackage}
    (F : FredholmPackage P) where
  kernelDimensionClosed : F.kernelDimension = 0 ∨ F.kernelDimension > 0
  cokernelDimensionClosed : F.cokernelDimension = 0 ∨ F.cokernelDimension > 0
  alternativePropertyClosed : F.alternativeProperty

def FredholmClosed {P : FunctionalBoundaryPackage}
    (F : FredholmPackage P) : Prop :=
  F.index = 0 ∧ (F.kernelDimension = 0 ∨ F.cokernelDimension = 0) ∧
  (F.kernelDimension = 0 → F.cokernelDimension = 0) ∧
  (F.cokernelDimension = 0 → F.kernelDimension = 0) ∧
  F.alternativeProperty

theorem fredholm_closed_from_evidence {P : FunctionalBoundaryPackage}
    (F : FredholmPackage P) (E : FredholmEvidence F) :
    FredholmClosed F := by
  constructor
  · rfl
  · exact Or.elim E.kernelDimensionClosed
      (fun h => Or.inl h)
      (fun h => Or.inr h)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse