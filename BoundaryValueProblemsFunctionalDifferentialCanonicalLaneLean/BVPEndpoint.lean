import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BVPEndpointPackage {P : BVPPackage} (E : P) where
  solutionSpace : Type u
  norm : Type v
  convergence : Prop
  limitExists : Prop
  limitSatisfiesEquation : Prop

structure BVPEndpointEvidence {P : BVPPackage} {E : BVPEndpointPackage P} where
  solutionSpaceClosed : E.solutionSpace
  normClosed : E.norm
  convergenceClosed : E.convergence
  limitExistsClosed : E.limitExists
  limitSatisfiesEquationClosed : E.limitSatisfiesEquation

def BVPEndpointClosed {P : BVPPackage} {E : BVPEndpointPackage P} : Prop :=
  E.limitExists ∧ E.limitSatisfiesEquation

theorem bvp_endpoint_closed_from_evidence {P : BVPPackage} {E : BVPEndpointPackage P}
    (Ev : BVPEndpointEvidence) : BVPEndpointClosed := by
  exact And.intro Ev.limitExistsClosed Ev.limitSatisfiesEquationClosed

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse