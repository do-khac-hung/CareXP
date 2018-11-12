namespace CareXP {
    export interface ScriptUserDefinition {
        Username?: string;
        DisplayName?: string;
        IsAdmin?: boolean;
        Permissions?: { [key: string]: boolean };
        TenantId?: number;
    }
}

