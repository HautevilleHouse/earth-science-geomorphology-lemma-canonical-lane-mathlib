import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure FluvialErosionPackage where
  streamPower : Prop
  erosionThreshold : Prop
  sedimentTransport : Prop
  incisionRate : Prop

structure FluvialErosionEvidence (F : FluvialErosionPackage) where
  streamPowerClosed : F.streamPower
  erosionThresholdClosed : F.erosionThreshold
  sedimentTransportClosed : F.sedimentTransport
  incisionRateClosed : F.incisionRate

def FluvialErosionClosed (F : FluvialErosionPackage) : Prop :=
  F.streamPower ∧ F.erosionThreshold ∧ F.sedimentTransport ∧ F.incisionRate

theorem fluvial_erosion_closed_from_evidence (F : FluvialErosionPackage) (E : FluvialErosionEvidence F) :
    FluvialErosionClosed F := by
  exact And.intro E.streamPowerClosed (And.intro E.erosionThresholdClosed (And.intro E.sedimentTransportClosed E.incisionRateClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse