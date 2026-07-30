import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneOntologyPackage where
  termId : String
  termName : String
  pValue : Float
  enrichmentSignificant : Prop

structure GeneOntologyEvidence (G : GeneOntologyPackage) where
  pValueClosed : G.pValue < 0.05
  enrichmentSignificantClosed : G.enrichmentSignificant

def GeneOntologyClosed (G : GeneOntologyPackage) : Prop :=
  G.enrichmentSignificant ∧ (G.pValue < 0.05)

theorem gene_ontology_closed_from_evidence (G : GeneOntologyPackage)
    (Ev : GeneOntologyEvidence G) : GeneOntologyClosed G := by
  exact And.intro Ev.enrichmentSignificantClosed Ev.pValueClosed

end HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean