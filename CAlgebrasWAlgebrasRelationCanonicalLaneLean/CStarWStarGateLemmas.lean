import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarWStarAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse
