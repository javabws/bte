/**
 * PreapprovedPaymentStatuses.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI;

public class PreapprovedPaymentStatuses implements java.io.Serializable {
    private java.lang.String _value_;
    private static java.util.HashMap _table_ = new java.util.HashMap();

    // Constructor
    protected PreapprovedPaymentStatuses(java.lang.String value) {
        _value_ = value;
        _table_.put(_value_,this);
    }

    public static final java.lang.String _Active = "Active";
    public static final java.lang.String _Canceled = "Canceled";
    public static final java.lang.String _Failed = "Failed";
    public static final java.lang.String _Expired = "Expired";
    public static final PreapprovedPaymentStatuses Active = new PreapprovedPaymentStatuses(_Active);
    public static final PreapprovedPaymentStatuses Canceled = new PreapprovedPaymentStatuses(_Canceled);
    public static final PreapprovedPaymentStatuses Failed = new PreapprovedPaymentStatuses(_Failed);
    public static final PreapprovedPaymentStatuses Expired = new PreapprovedPaymentStatuses(_Expired);
    public java.lang.String getValue() { return _value_;}
    public static PreapprovedPaymentStatuses fromValue(java.lang.String value)
          throws java.lang.IllegalArgumentException {
        PreapprovedPaymentStatuses enumeration = (PreapprovedPaymentStatuses)
            _table_.get(value);
        if (enumeration==null) throw new java.lang.IllegalArgumentException();
        return enumeration;
    }
    public static PreapprovedPaymentStatuses fromString(java.lang.String value)
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
        new org.apache.axis.description.TypeDesc(PreapprovedPaymentStatuses.class);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "PreapprovedPaymentStatuses"));
    }
    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

}
