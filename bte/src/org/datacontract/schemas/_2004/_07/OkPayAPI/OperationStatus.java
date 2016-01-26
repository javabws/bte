/**
 * OperationStatus.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI;

public class OperationStatus implements java.io.Serializable {
    private java.lang.String _value_;
    private static java.util.HashMap _table_ = new java.util.HashMap();

    // Constructor
    protected OperationStatus(java.lang.String value) {
        _value_ = value;
        _table_.put(_value_,this);
    }

    public static final java.lang.String _None = "None";
    public static final java.lang.String _Error = "Error";
    public static final java.lang.String _Canceled = "Canceled";
    public static final java.lang.String _Pending = "Pending";
    public static final java.lang.String _Reversed = "Reversed";
    public static final java.lang.String _Hold = "Hold";
    public static final java.lang.String _Completed = "Completed";
    public static final OperationStatus None = new OperationStatus(_None);
    public static final OperationStatus Error = new OperationStatus(_Error);
    public static final OperationStatus Canceled = new OperationStatus(_Canceled);
    public static final OperationStatus Pending = new OperationStatus(_Pending);
    public static final OperationStatus Reversed = new OperationStatus(_Reversed);
    public static final OperationStatus Hold = new OperationStatus(_Hold);
    public static final OperationStatus Completed = new OperationStatus(_Completed);
    public java.lang.String getValue() { return _value_;}
    public static OperationStatus fromValue(java.lang.String value)
          throws java.lang.IllegalArgumentException {
        OperationStatus enumeration = (OperationStatus)
            _table_.get(value);
        if (enumeration==null) throw new java.lang.IllegalArgumentException();
        return enumeration;
    }
    public static OperationStatus fromString(java.lang.String value)
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
        new org.apache.axis.description.TypeDesc(OperationStatus.class);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "OperationStatus"));
    }
    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

}
