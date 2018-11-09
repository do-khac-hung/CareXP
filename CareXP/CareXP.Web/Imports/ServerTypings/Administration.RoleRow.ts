﻿namespace CareXP.Administration {
    export interface RoleRow {
        RoleId?: number;
        RoleName?: string;
        TenantId?: number;
        TenantName?: string;
    }

    export namespace RoleRow {
        export const idProperty = 'RoleId';
        export const nameProperty = 'RoleName';
        export const localTextPrefix = 'Administration.Role';
        export const lookupKey = 'Administration.Role';

        export function getLookup(): Q.Lookup<RoleRow> {
            return Q.getLookup<RoleRow>('Administration.RoleTenant'); 
        }

        export declare const enum Fields {
            RoleId = "RoleId",
            RoleName = "RoleName",
            TenantId = "TenantId",
            TenantName = "TenantName"
        }
    }
}
