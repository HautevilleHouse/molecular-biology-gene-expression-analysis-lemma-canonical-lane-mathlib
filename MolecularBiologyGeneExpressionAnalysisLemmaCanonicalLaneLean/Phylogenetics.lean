import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure PhylogeneticTreePackage where
  species : Type u
  distanceMatrix : species → species → ℚ
  treeTopology : Prop
  branchLengths : species → species → ℚ
  additiveProperty : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeTopologyClosed : P.treeTopology
  additivePropertyClosed : P.additiveProperty

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeTopology ∧ P.additiveProperty

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeTopologyClosed E.additivePropertyClosed

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse