import canonicalLaneMathlib.AdmissibleClass
import CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure GelfandNaimarkPackage where
  abelianCStar : CStarAlgebraPackage
  compactHausdorffSpace : Type u
  continuousFunctions : compactHausdorffSpace → ℂ
  isometricStarIsomorphism : Prop
  gelfandTransformDefined : Prop

structure GelfandNaimarkEvidence (G : GelfandNaimarkPackage) where
  isometricStarIsomorphismClosed : G.isometricStarIsomorphism
  gelfandTransformDefinedClosed : G.gelfandTransformDefined

def GelfandNaimarkClosed (G : GelfandNaimarkPackage) : Prop :=
  G.isometricStarIsomorphism ∧ G.gelfandTransformDefined

theorem gelfand_naimark_closed_from_evidence (G : GelfandNaimarkPackage) (E : GelfandNaimarkEvidence G) :
    GelfandNaimarkClosed G := by
  exact And.intro E.isometricStarIsomorphismClosed E.gelfandTransformDefinedClosed

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse