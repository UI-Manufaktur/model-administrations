module models.administrations.entities.policies.internal_organization_assignment;

@safe:
import models.administrations;

// 
class DADMPolicyInternalOrganizationAssignment : DOOPEntity {
  mixin(EntityThis!("ADMPolicyInternalOrganizationAssignment"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ValidFrom": StringAttributeClass, // 
        "ValidTo": StringAttributeClass, // 
        "PolicyName": StringAttributeClass, // 
        "PolicyType": StringAttributeClass, // 
        "OrganizationHierarchyName": StringAttributeClass, // 
        "LegalEntityId": UUIDAttributeClass, // 
        "OperatingUnitNumber": StringAttributeClass, // 
        "BackingTable_SysPolicyOrganizationRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_policyinternalorganizationassignment");
  }
}
mixin(EntityCalls!("ADMPolicyInternalOrganizationAssignment"));

unittest {
  version(uim_entities) {
    assert(ADMPolicyInternalOrganizationAssignment);
  
  auto entity = ADMPolicyInternalOrganizationAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}