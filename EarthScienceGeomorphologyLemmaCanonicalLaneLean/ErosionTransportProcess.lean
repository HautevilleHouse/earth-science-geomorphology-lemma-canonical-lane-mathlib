import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure ErosionTransportPackage (A : AdmissibleClass) where
  slopeDiffusionModel : Prop
  fluvialEntrainment : Prop
  hillslopeSedimentFlux : Prop
  channelNetworkIncision : Prop
  sedimentTransportCapacity : Prop
  closureCondition : bridgeClosed A ∧ gateClosed A

def ErosionTransportClosed (A : AdmissibleClass) (E : ErosionTransportPackage A) : Prop :=
  E.slopeDiffusionModel ∧ E.fluvialEntrainment ∧ E.hillslopeSedimentFlux ∧
  E.channelNetworkIncision ∧ E.sedimentTransportCapacity ∧ E.closureCondition

theorem erosion_transport_closed (A : AdmissibleClass) (E : ErosionTransportPackage A) :
    ErosionTransportClosed A E := by
  exact And.intro E.slopeDiffusionModel
    (And.intro E.fluvialEntrainment
      (And.intro E.hillslopeSedimentFlux
        (And.intro E.channelNetworkIncision
          (And.intro E.sedimentTransportCapacity E.closureCondition))))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse
