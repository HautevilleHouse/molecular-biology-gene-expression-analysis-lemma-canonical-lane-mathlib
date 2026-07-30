import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type u
  treeTopology : Type v
  branchLengths : Type w
  likelihoodScore : ℝ
  bootstrapSupport : ℝ
  treeConstructed : Prop
  statisticalSupportComputed : Prop
  treeConstructedClosed : treeConstructed
  statisticalSupportComputedClosed : statisticalSupportComputed

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeConstructedClosed : P.treeConstructed
  statisticalSupportComputedClosed : P.statisticalSupportComputed

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeConstructed ∧ P.statisticalSupportComputed

theorem phylogenetic_tree_closed_from_evidence
    (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.treeConstructedClosed E.statisticalSupportComputedClosed

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse