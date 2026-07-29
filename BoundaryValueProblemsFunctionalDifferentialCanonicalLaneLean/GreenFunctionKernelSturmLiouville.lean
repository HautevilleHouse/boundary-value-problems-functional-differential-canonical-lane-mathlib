import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure SturmLiouvillePackage where
  p : ℝ → ℝ
  q : ℝ → ℝ
  w : ℝ → ℝ
  boundaryWeights : Prop
  eigenvalueProblem : Prop
  eigenfunctionExpansion : Prop

structure SturmLiouvilleEvidence (S : SturmLiouvillePackage) where
  boundaryWeightsClosed : S.boundaryWeights
  eigenvalueProblemClosed : S.eigenvalueProblem
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion

def SturmLiouvilleClosed (S : SturmLiouvillePackage) : Prop :=
  S.boundaryWeights ∧ S.eigenvalueProblem ∧ S.eigenfunctionExpansion

theorem sturm_liouville_closed_from_evidence (S : SturmLiouvillePackage)
    (E : SturmLiouvilleEvidence S) : SturmLiouvilleClosed S := by
  exact And.intro E.boundaryWeightsClosed (And.intro E.eigenvalueProblemClosed E.eigenfunctionExpansionClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse