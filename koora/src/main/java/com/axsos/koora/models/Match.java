package com.axsos.koora.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="matches")
public class Match {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	
	private enum firstTeam {
		Qatar, Ecuador, Senegal, Netherlands,England, Iran, USA, Wales,Argentina, SaudiArabia, Mexico, Poland,
		France, Australia, Denmark, Tunisia,Spain, CostaRica, Germany, Japan,Belgium, Canada, Morocco, Croatia,
		 Brazil, Serbia, Switzerland, Cameroon,Portugal, Ghana, Uruguay, SouthKorea
    };
    
    private enum secondTeam {
		Qatar, Ecuador, Senegal, Netherlands,England, Iran, USA, Wales,Argentina, SaudiArabia, Mexico, Poland,
		France, Australia, Denmark, Tunisia,Spain, CostaRica, Germany, Japan,Belgium, Canada, Morocco, Croatia,
		 Brazil, Serbia, Switzerland, Cameroon,Portugal, Ghana, Uruguay, SouthKorea
    };
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
    
    @OneToMany(mappedBy="match", fetch = FetchType.LAZY)
    private List<Event> games;
    
    public Match() {
    	
    }
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
    
    

}
