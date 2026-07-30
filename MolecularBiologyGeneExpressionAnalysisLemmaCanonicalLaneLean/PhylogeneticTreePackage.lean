import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure PhylogeneticTreePackage where
  species : List String
  distanceMatrix : List (List Float)
  treeTopology : String
  bootstrapSupport : Float
  treeResolved : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  bootstrapAboveThreshold : P.bootstrapSupport > 0.95
  treeResolvedClosed : P.treeResolved

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  (P.bootstrapSupport > 0.95) ∧ P.treeResolved

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.bootstrapAboveThreshold E.treeResolvedClosed

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse