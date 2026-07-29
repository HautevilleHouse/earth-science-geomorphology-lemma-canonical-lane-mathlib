import EarthScienceGeomorphologyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure FluvialProcessPackage where
  discharge : Type
  sedimentTransport : Prop
  channelFormation : Prop
  avulsionFrequency : Prop
  deltaProgradation : Prop

structure FluvialProcessEvidence (F : FluvialProcessPackage) where
  sedimentTransportClosed : F.sedimentTransport
  channelFormationClosed : F.channelFormation
  avulsionFrequencyClosed : F.avulsionFrequency
  deltaProgradationClosed : F.deltaProgradation

def FluvialProcessClosed (F : FluvialProcessPackage) : Prop :=
  F.sedimentTransport ∧ F.channelFormation ∧ F.avulsionFrequency ∧ F.deltaProgradation

theorem fluvial_process_closed_from_evidence (F : FluvialProcessPackage)
    (E : FluvialProcessEvidence F) : FluvialProcessClosed F := by
  exact And.intro E.sedimentTransportClosed
    (And.intro E.channelFormationClosed
      (And.intro E.avulsionFrequencyClosed E.deltaProgradationClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse