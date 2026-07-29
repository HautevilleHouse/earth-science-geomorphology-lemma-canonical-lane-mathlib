import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure ErosionTransportDeposition where
  erosionProcesses : Prop
  sedimentTransport : Prop
  depositionalRegimes : Prop
  massBalanceClosure : Prop

structure ErosionTransportDepositionEvidence (E : ErosionTransportDeposition) where
  erosionProcessesClosed : E.erosionProcesses
  sedimentTransportClosed : E.sedimentTransport
  depositionalRegimesClosed : E.depositionalRegimes
  massBalanceClosureClosed : E.massBalanceClosure

def ErosionTransportDepositionClosed (E : ErosionTransportDeposition) : Prop :=
  E.erosionProcesses ∧ E.sedimentTransport ∧
  E.depositionalRegimes ∧ E.massBalanceClosure

theorem erosion_transport_deposition_closed_from_evidence
    (E : ErosionTransportDeposition) (Ev : ErosionTransportDepositionEvidence E) :
    ErosionTransportDepositionClosed E := by
  exact And.intro Ev.erosionProcessesClosed
    (And.intro Ev.sedimentTransportClosed
      (And.intro Ev.depositionalRegimesClosed Ev.massBalanceClosureClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse