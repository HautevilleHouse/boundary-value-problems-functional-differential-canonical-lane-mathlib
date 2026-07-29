import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure WeakSolutionPackage where
  bilinearForm : Type u
  linearForm : Type v
  solutionExistence : Prop
  uniqueness : Prop
  stability : Prop

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  solutionExistenceClosed : W.solutionExistence
  uniquenessClosed : W.uniqueness
  stabilityClosed : W.stability

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.solutionExistence ∧ W.uniqueness ∧ W.stability

theorem weak_solution_closed_from_evidence
    (W : WeakSolutionPackage) (E : WeakSolutionEvidence W) :
    WeakSolutionClosed W := by
  exact And.intro E.solutionExistenceClosed (And.intro E.uniquenessClosed E.stabilityClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse