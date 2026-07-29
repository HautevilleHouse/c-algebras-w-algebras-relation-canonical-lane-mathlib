import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  starRing : StarRing carrier
  cstarRing : CstarRing carrier

structure WStarAlgebra where
  carrier : Type
  topology : TopologicalSpace carrier
  starRing : StarRing carrier
  wstarAlgebra : WstarAlgebra carrier

structure CWAdmittedObject where
  cstar : CSpace
  wstar : WStarAlgebra
  inclusion : cstar.carrier → wstar.carrier
  isInclusion : Prop
  denseInWeak : Prop
  conclusion : denseInWeak

def CWAdmittedClosed (O : CWAdmittedObject) : Prop :=
  O.denseInWeak

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse