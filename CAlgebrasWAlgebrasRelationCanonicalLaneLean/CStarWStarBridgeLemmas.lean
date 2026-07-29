import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarWStarAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CStarWStarWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse
