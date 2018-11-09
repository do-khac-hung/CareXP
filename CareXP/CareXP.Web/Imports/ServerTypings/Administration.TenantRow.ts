namespace CareXP.Administration {
    export interface TenantRow {
        TenantId?: number;
        TenantName?: string;
    }

    export namespace TenantRow {
        export const idProperty = 'TenantId';
        export const nameProperty = 'TenantName';
        export const localTextPrefix = 'Administration.Tenant';
        export const lookupKey = 'Administration.Tenant';

        export function getLookup(): Q.Lookup<TenantRow> {
            return Q.getLookup<TenantRow>('Administration.Tenant');
        }

        export declare const enum Fields {
            TenantId = "TenantId",
            TenantName = "TenantName"
        }
    }
}

