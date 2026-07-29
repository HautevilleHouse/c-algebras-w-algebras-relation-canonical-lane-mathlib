import canonicalLaneMathlib.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure InclusionPackage {C : CStarAlgebraPackage} {W : WStarAlgebraPackage} where
  homomorphism : C.A → W.M
  isStarHom : StarHom C.A W.M
  isIsometric : Isometry homomorphism
  denseImage : SetLike (Set.range homomorphism) W.M
  weakClosureEqualsW : WeakClosure (Set.range homomorphism) = ⊤

structure InclusionEvidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (I : InclusionPackage C W) where
  isStarHomClosed : I.isStarHom
  isIsometricClosed : I.isIsometric
  denseImageClosed : I.denseImage
  weakClosureEqualsWClosed : I.weakClosureEqualsW

def InclusionClosed {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (I : InclusionPackage C W) : Prop :=
  I.isStarHom ∧ I.isIsometric ∧ I.denseImage ∧ I.weakClosureEqualsW

theorem inclusion_closed_from_evidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (I : InclusionPackage C W) (E : InclusionEvidence I) : InclusionClosed I := by
  exact And.intro E.isStarHomClosed (And.intro E.isIsometricClosed
    (And.intro E.denseImageClosed E.weakClosureEqualsWClosed))

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse