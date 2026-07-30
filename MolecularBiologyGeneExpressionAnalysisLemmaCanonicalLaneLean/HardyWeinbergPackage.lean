import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : Nat
  observedGenotypeCounts : Nat × Nat × Nat
  expectedEquilibrium : Prop
  chiSquareStatistic : Float
  equilibriumHolds : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  expectedEquilibriumClosed : H.expectedEquilibrium
  chiSquareBelowThreshold : H.chiSquareStatistic < 3.841
  equilibriumHoldsClosed : H.equilibriumHolds

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.expectedEquilibrium ∧ (H.chiSquareStatistic < 3.841) ∧ H.equilibriumHolds

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.expectedEquilibriumClosed (And.intro E.chiSquareBelowThreshold E.equilibriumHoldsClosed)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse