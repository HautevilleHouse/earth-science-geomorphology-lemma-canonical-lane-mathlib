import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure GlacialErosionModelPackage (G : GeomorphicProcessPackage) where
  iceSlidingVelocity : Prop
  basalShearStress : Prop
  erosionRateLaw : Prop
  quarryingAbrasion : Prop
  glacialValleyCrossSection : Prop

structure GlacialErosionModelEvidence {G : GeomorphicProcessPackage} (Gl : GlacialErosionModelPackage G) where
  iceSlidingVelocityClosed : Gl.iceSlidingVelocity
  basalShearStressClosed : Gl.basalShearStress
  erosionRateLawClosed : Gl.erosionRateLaw
  quarryingAbrasionClosed : Gl.quarryingAbrasion
  glacialValleyCrossSectionClosed : Gl.glacialValleyCrossSection

def GlacialErosionModelClosed {G : GeomorphicProcessPackage} (Gl : GlacialErosionModelPackage G) : Prop :=
  Gl.iceSlidingVelocity ∧ Gl.basalShearStress ∧ Gl.erosionRateLaw ∧ Gl.quarryingAbrasion ∧ Gl.glacialValleyCrossSection

theorem glacial_erosion_model_closed_from_evidence {G : GeomorphicProcessPackage} (Gl : GlacialErosionModelPackage G) (E : GlacialErosionModelEvidence Gl) : GlacialErosionModelClosed Gl := by
  exact And.intro E.iceSlidingVelocityClosed (And.intro E.basalShearStressClosed (And.intro E.erosionRateLawClosed (And.intro E.quarryingAbrasionClosed E.glacialValleyCrossSectionClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse