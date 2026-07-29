import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure SedimentTransportScaleLinking where
  hillslopeProcesses : Prop
  fluvialChannelDynamics : Prop
  basinScaleIntegration : Prop
  timescaleCompatibility : Prop

structure SedimentTransportScaleLinkingEvidence (S : SedimentTransportScaleLinking) where
  hillslopeProcessesClosed : S.hillslopeProcesses
  fluvialChannelDynamicsClosed : S.fluvialChannelDynamics
  basinScaleIntegrationClosed : S.basinScaleIntegration
  timescaleCompatibilityClosed : S.timescaleCompatibility

def SedimentTransportScaleLinkingClosed (S : SedimentTransportScaleLinking) : Prop :=
  S.hillslopeProcesses ∧ S.fluvialChannelDynamics ∧
  S.basinScaleIntegration ∧ S.timescaleCompatibility

theorem sediment_transport_scale_linking_closed_from_evidence
    (S : SedimentTransportScaleLinking) (Ev : SedimentTransportScaleLinkingEvidence S) :
    SedimentTransportScaleLinkingClosed S := by
  exact And.intro Ev.hillslopeProcessesClosed
    (And.intro Ev.fluvialChannelDynamicsClosed
      (And.intro Ev.basinScaleIntegrationClosed Ev.timescaleCompatibilityClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse