import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure ClimaticTectonicForcing where
  climateDrivers : Prop
  tectonicUplift : Prop
  coupledResponse : Prop
  orographicPrecipitation : Prop

structure ClimaticTectonicForcingEvidence (C : ClimaticTectonicForcing) where
  climateDriversClosed : C.climateDrivers
  tectonicUpliftClosed : C.tectonicUplift
  coupledResponseClosed : C.coupledResponse
  orographicPrecipitationClosed : C.orographicPrecipitation

def ClimaticTectonicForcingClosed (C : ClimaticTectonicForcing) : Prop :=
  C.climateDrivers ∧ C.tectonicUplift ∧
  C.coupledResponse ∧ C.orographicPrecipitation

theorem climatic_tectonic_forcing_closed_from_evidence
    (C : ClimaticTectonicForcing) (Ev : ClimaticTectonicForcingEvidence C) :
    ClimaticTectonicForcingClosed C := by
  exact And.intro Ev.climateDriversClosed
    (And.intro Ev.tectonicUpliftClosed
      (And.intro Ev.coupledResponseClosed Ev.orographicPrecipitationClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse