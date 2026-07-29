import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure FunctionalDifferentialOperatorPackage where
  domain : Type u
  codomain : Type v
  linearPart : Type w
  nonlinearPart : Type x
  carlemanEstimates : Prop
  coercivity : Prop

structure FunctionalDifferentialEvidence (O : FunctionalDifferentialOperatorPackage) where
  carlemanEstimatesClosed : O.carlemanEstimates
  coercivityClosed : O.coercivity

def FunctionalDifferentialClosed (O : FunctionalDifferentialOperatorPackage) : Prop :=
  O.carlemanEstimates ∧ O.coercivity

theorem functional_differential_closed_from_evidence
    (O : FunctionalDifferentialOperatorPackage) (E : FunctionalDifferentialEvidence O) :
    FunctionalDifferentialClosed O := by
  exact And.intro E.carlemanEstimatesClosed E.coercivityClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse