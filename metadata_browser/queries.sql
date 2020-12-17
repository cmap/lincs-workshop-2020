-- DRUGS --

-- count number of compounds with an MoA and target annotation
SELECT count(distinct `pert_id`) FROM compoundinfo WHERE `target` IS NOT NULL AND `MoA` IS NOT NULL

-- get a list of all MoAs profiled
SELECT distinct `MoA` from compoundinfo WHERE `MoA` IS NOT NULL




-- SIGNATURES --

-- get exemplar signatures of chloroquine
SELECT `sig_id`, `pert_id`, `cmap_name`, `pert_type`, `nsample`, `tas`, `cc_q75` FROM siginfo
WHERE `cmap_name` LIKE '%chloroquine%' AND `is_ncs_exemplar` = 1 

-- get all signatures in A375 -- will be clipped to 1st 1000
SELECT `sig_id`, `pert_id`, `cmap_name`, `pert_type`, `nsample`, `tas`, `cc_q75` FROM siginfo
WHERE `cell_iname` = 'A375'

-- count the number of signatures in A375 cell line
SELECT count(distinct `sig_id`) FROM siginfo WHERE `cell_iname` = 'A375'

