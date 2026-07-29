import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure LandscapeEvolutionPackage where
  hillslopeDiffusion : Prop
  channelNetwork : Prop
  baseLevelChange : Prop
  tectonicUplift : Prop

structure LandscapeEvolutionEvidence (L : LandscapeEvolutionPackage) where
  hillslopeDiffusionClosed : L.hillslopeDiffusion
  channelNetworkClosed : L.channelNetwork
  baseLevelChangeClosed : L.baseLevelChange
  tectonicUpliftClosed : L.tectonicUplift

def LandscapeEvolutionClosed (L : LandscapeEvolutionPackage) : Prop :=
  L.hillslopeDiffusion ∧ L.channelNetwork ∧ L.baseLevelChange ∧ L.tectonicUplift

theorem landscape_evolution_closed_from_evidence (L : LandscapeEvolutionPackage) (E : LandscapeEvolutionEvidence L) :
    LandscapeEvolutionClosed L := by
  exact And.intro E.hillslopeDiffusionClosed (And.intro E.channelNetworkClosed (And.intro E.baseLevelChangeClosed E.tectonicUpliftClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse