import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure EarthSystemsModel where
  lithosphereAtmosphereHydrosphere : Prop
  feedbackLoops : Prop
  timescaleHierarchy : Prop
  driverResponseStructure : Prop

structure EarthSystemsModelEvidence (E : EarthSystemsModel) where
  lithosphereAtmosphereHydrosphereClosed : E.lithosphereAtmosphereHydrosphere
  feedbackLoopsClosed : E.feedbackLoops
  timescaleHierarchyClosed : E.timescaleHierarchy
  driverResponseStructureClosed : E.driverResponseStructure

def EarthSystemsModelClosed (E : EarthSystemsModel) : Prop :=
  E.lithosphereAtmosphereHydrosphere ∧ E.feedbackLoops ∧
  E.timescaleHierarchy ∧ E.driverResponseStructure

theorem earth_systems_model_closed_from_evidence
    (E : EarthSystemsModel) (Ev : EarthSystemsModelEvidence E) :
    EarthSystemsModelClosed E := by
  exact And.intro Ev.lithosphereAtmosphereHydrosphereClosed
    (And.intro Ev.feedbackLoopsClosed
      (And.intro Ev.timescaleHierarchyClosed Ev.driverResponseStructureClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse