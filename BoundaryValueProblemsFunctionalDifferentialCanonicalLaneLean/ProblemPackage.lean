import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialEquation where
  operator : Type u
  domain : Type v
  boundaryConditions : Type w
  linearPart : Prop
  nonlinearPart : Prop

structure ProblemPackage (E : FunctionalDifferentialEquation) where
  differentialOperator : E.operator
  functionSpace : E.domain
  bcData : E.boundaryConditions
  linearContinuous : Prop
  compactEmbedding : Prop
  aPrioriEstimates : Prop

structure ProblemEvidence {E : FunctionalDifferentialEquation} (P : ProblemPackage E) where
  linearContinuousClosed : P.linearContinuous
  compactEmbeddingClosed : P.compactEmbedding
  aPrioriEstimatesClosed : P.aPrioriEstimates

def ProblemClosed {E : FunctionalDifferentialEquation} (P : ProblemPackage E) : Prop :=
  P.linearContinuous ∧ P.compactEmbedding ∧ P.aPrioriEstimates

theorem problem_closed_from_evidence
    {E : FunctionalDifferentialEquation} (P : ProblemPackage E) (E' : ProblemEvidence P) :
    ProblemClosed P := by
  exact And.intro E'.linearContinuousClosed
    (And.intro E'.compactEmbeddingClosed E'.aPrioriEstimatesClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse