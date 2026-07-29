import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalDifferentialOperator
import HautevilleHouse.BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.ExistenceTheorem

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure StabilityAnalysisPackage {O : FunctionalDifferentialOperatorPackage}
    {B : BoundaryConditionsPackage O} (E : ExistenceTheoremPackage B) where
  perturbationBound : Prop
  solutionVariation : Prop
  exponentialStability : Prop
  lyapunovFunctional : Prop

structure StabilityAnalysisEvidence {O : FunctionalDifferentialOperatorPackage}
    {B : BoundaryConditionsPackage O} {E : ExistenceTheoremPackage B}
    (S : StabilityAnalysisPackage E) where
  perturbationBoundClosed : S.perturbationBound
  solutionVariationClosed : S.solutionVariation
  exponentialStabilityClosed : S.exponentialStability
  lyapunovFunctionalClosed : S.lyapunovFunctional

def StabilityAnalysisClosed {O : FunctionalDifferentialOperatorPackage}
    {B : BoundaryConditionsPackage O} {E : ExistenceTheoremPackage B}
    (S : StabilityAnalysisPackage E) : Prop :=
  S.perturbationBound ∧ S.solutionVariation ∧ S.exponentialStability ∧ S.lyapunovFunctional

theorem stability_analysis_closed_from_evidence
    {O : FunctionalDifferentialOperatorPackage} {B : BoundaryConditionsPackage O}
    {E : ExistenceTheoremPackage B} (S : StabilityAnalysisPackage E)
    (Ev : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S := by
  exact And.intro Ev.perturbationBoundClosed
    (And.intro Ev.solutionVariationClosed
      (And.intro Ev.exponentialStabilityClosed Ev.lyapunovFunctionalClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
