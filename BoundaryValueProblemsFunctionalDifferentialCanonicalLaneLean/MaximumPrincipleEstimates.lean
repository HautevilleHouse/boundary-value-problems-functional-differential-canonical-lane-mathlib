import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure MaximumPrinciplePackage where
  ellipticOperator : Type
  strongPrinciple : Prop
  weakPrinciple : Prop
  aPrioriEstimates : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  strongPrincipleClosed : M.strongPrinciple
  weakPrincipleClosed : M.weakPrinciple
  aPrioriEstimatesClosed : M.aPrioriEstimates

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.strongPrinciple ∧ M.weakPrinciple ∧ M.aPrioriEstimates

theorem maximum_principle_closed_from_evidence (M : MaximumPrinciplePackage)
    (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.strongPrincipleClosed (And.intro E.weakPrincipleClosed E.aPrioriEstimatesClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse