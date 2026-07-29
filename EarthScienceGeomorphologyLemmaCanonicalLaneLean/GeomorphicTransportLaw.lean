import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

-- Geomorphic transport law as an admissible-class closure

def GeomorphicTransportAdmissible (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem geomorphic_transport_admissible (A : AdmissibleClass) :
    GeomorphicTransportAdmissible A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse