/**
 * SubscriptionStatuses.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI;

public class SubscriptionStatuses implements java.io.Serializable {
    private java.lang.String _value_;
    private static java.util.HashMap _table_ = new java.util.HashMap();

    // Constructor
    protected SubscriptionStatuses(java.lang.String value) {
        _value_ = value;
        _table_.put(_value_,this);
    }

    public static final java.lang.String _Active = "Active";
    public static final java.lang.String _Canceled = "Canceled";
    public static final java.lang.String _Failed = "Failed";
    public static final java.lang.String _Expired = "Expired";
    public static final java.lang.String _Modified = "Modified";
    public static final java.lang.String _Suspended = "Suspended";
    public static final SubscriptionStatuses Active = new SubscriptionStatuses(_Active);
    public static final SubscriptionStatuses Canceled = new SubscriptionStatuses(_Canceled);
    public static final SubscriptionStatuses Failed = new SubscriptionStatuses(_Failed);
    public static final SubscriptionStatuses Expired = new SubscriptionStatuses(_Expired);
    public static final SubscriptionStatuses Modified = new SubscriptionStatuses(_Modified);
    public static final SubscriptionStatuses Suspended = new SubscriptionStatuses(_Suspended);
    public java.lang.String getValue() { return _value_;}
    public static SubscriptionStatuses fromValue(java.lang.String value)
          throws java.lang.IllegalArgumentException {
        SubscriptionStatuses enumeration = (SubscriptionStatuses)
            _table_.get(value);
        if (enumeration==null) throw new java.lang.IllegalArgumentException();
        return enumeration;
    }
    public static SubscriptionStatuses fromString(java.lang.String value)
          throws java.lang.IllegalArgumentException {
        return fromValue(value);
    }
    public boolean equals(java.lang.Object obj) {return (obj == this);}
    public int hashCode() { return toString().hashCode();}
    public java.lang.String toString() { return _value_;}
    public java.lang.Object readResolve() throws java.io.ObjectStreamException { return fromValue(_value_);}
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new org.apache.axis.encoding.ser.EnumSerializer(
            _javaType, _xmlType);
    }
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new org.apache.axis.encoding.ser.EnumDeserializer(
            _javaType, _xmlType);
    }
    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(SubscriptionStatuses.class);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "SubscriptionStatuses"));
    }
    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

}
