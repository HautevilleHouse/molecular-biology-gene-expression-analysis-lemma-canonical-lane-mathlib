import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneSetEnrichmentPackage where
  geneSets : Type u
  enrichmentScores : geneSets → ℝ
  pValues : geneSets → ℝ
  fdrCorrected : Prop
  significantSetsIdentified : Prop
  fdrCorrectedClosed : fdrCorrected
  significantSetsIdentifiedClosed : significantSetsIdentified

structure GeneSetEnrichmentEvidence (G : GeneSetEnrichmentPackage) where
  fdrCorrectedClosed : G.fdrCorrected
  significantSetsIdentifiedClosed : G.significantSetsIdentified

def GeneSetEnrichmentClosed (G : GeneSetEnrichmentPackage) : Prop :=
  G.fdrCorrected ∧ G.significantSetsIdentified

theorem gene_set_enrichment_closed_from_evidence
    (G : GeneSetEnrichmentPackage) (E : GeneSetEnrichmentEvidence G) :
    GeneSetEnrichmentClosed G := by
  exact And.intro E.fdrCorrectedClosed E.significantSetsIdentifiedClosed

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse