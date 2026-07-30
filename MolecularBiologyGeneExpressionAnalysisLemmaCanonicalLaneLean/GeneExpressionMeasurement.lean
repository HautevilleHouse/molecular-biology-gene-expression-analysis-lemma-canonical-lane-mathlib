import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneExpressionMeasurementPackage where
  samples : Type u
  genes : Type v
  expressionLevels : samples → genes → ℝ
  normalizationApplied : Prop
  batchEffectCorrected : Prop
  qualityControlPassed : Prop
  normalizationAppliedClosed : normalizationApplied
  batchEffectCorrectedClosed : batchEffectCorrected
  qualityControlPassedClosed : qualityControlPassed

structure GeneExpressionMeasurementEvidence (G : GeneExpressionMeasurementPackage) where
  normalizationAppliedClosed : G.normalizationApplied
  batchEffectCorrectedClosed : G.batchEffectCorrected
  qualityControlPassedClosed : G.qualityControlPassed

def GeneExpressionMeasurementClosed (G : GeneExpressionMeasurementPackage) : Prop :=
  G.normalizationApplied ∧ G.batchEffectCorrected ∧ G.qualityControlPassed

theorem gene_expression_measurement_closed_from_evidence
    (G : GeneExpressionMeasurementPackage) (E : GeneExpressionMeasurementEvidence G) :
    GeneExpressionMeasurementClosed G := by
  exact And.intro E.normalizationAppliedClosed
    (And.intro E.batchEffectCorrectedClosed E.qualityControlPassedClosed)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse