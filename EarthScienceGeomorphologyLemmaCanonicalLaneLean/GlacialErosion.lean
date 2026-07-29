import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure GlacialErosionPackage where
  iceFlowVelocity : Prop
  basalSliding : Prop
  abrasionRate : Prop
  quarryingRate : Prop

structure GlacialErosionEvidence (G : GlacialErosionPackage) where
  iceFlowVelocityClosed : G.iceFlowVelocity
  basalSlidingClosed : G.basalSliding
  abrasionRateClosed : G.abrasionRate
  quarryingRateClosed : G.quarryingRate

def GlacialErosionClosed (G : GlacialErosionPackage) : Prop :=
  G.iceFlowVelocity ∧ G.basalSliding ∧ G.abrasionRate ∧ G.quarryingRate

theorem glacial_erosion_closed_from_evidence (G : GlacialErosionPackage) (E : GlacialErosionEvidence G) :
    GlacialErosionClosed G := by
  exact And.intro E.iceFlowVelocityClosed (And.intro E.basalSlidingClosed (And.intro E.abrasionRateClosed E.quarryingRateClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse